#!/usr/bin/env python3
"""
Script to parse SCIP debug log files and convert to CSV format.
Each line contains debug information about cuts and iterations.
"""

import re
import csv
import sys

def parse_log_line(line):
    """
    Parse a single log line and extract structured data.
    Returns a dictionary with parsed fields.
    """
    data = {}
    
    # Extract first aggrow ind (if present)
    aggrow_match = re.search(r'first aggrow ind:(\d+)', line)
    if aggrow_match:
        data['first_aggrow_ind'] = int(aggrow_match.group(1))
    
    # Extract sanity cut efficacy (if present)
    efficacy_match = re.search(r'sanity cut efficacy:([\d.]+)', line)
    if efficacy_match:
        data['sanity_cut_efficacy'] = float(efficacy_match.group(1))
    
    # Extract nrelaxcols_total
    nrelaxcols_match = re.search(r'nrelaxcols_total:(\d+)', line)
    if nrelaxcols_match:
        data['nrelaxcols_total'] = int(nrelaxcols_match.group(1))
    
    # Extract nint_total
    nint_total_match = re.search(r'nint_total:(\d+)', line)
    if nint_total_match:
        data['nint_total'] = int(nint_total_match.group(1))
    
    # Extract ncols_vbd
    ncols_vbd_match = re.search(r'ncols_vbd:(\d+)', line)
    if ncols_vbd_match:
        data['ncols_vbd'] = int(ncols_vbd_match.group(1))
    
    # Extract nint_vbd
    nint_vbd_match = re.search(r'nint_vbd:(\d+)', line)
    if nint_vbd_match:
        data['nint_vbd'] = int(nint_vbd_match.group(1))
    
    # Extract nrows
    nrows_match = re.search(r'nrows:\s*(\d+)', line)
    if nrows_match:
        data['nrows'] = int(nrows_match.group(1))
    
    # Extract niters
    niters_match = re.search(r'niters:(\d+)', line)
    if niters_match:
        data['niters'] = int(niters_match.group(1))
    
    # Extract scipiter
    scipiter_match = re.search(r'scipiter:(\d+)', line)
    if scipiter_match:
        data['scipiter'] = int(scipiter_match.group(1))
    
    # Extract fixiter
    fixiter_match = re.search(r'fixiter:(\d+)', line)
    if fixiter_match:
        data['fixiter'] = int(fixiter_match.group(1))
    
    # Extract heuriter
    heuriter_match = re.search(r'heuriter:(\d+)', line)
    if heuriter_match:
        data['heuriter'] = int(heuriter_match.group(1))
    
    # Extract inneriter
    inneriter_match = re.search(r'inneriter:(\d+)', line)
    if inneriter_match:
        data['inneriter'] = int(inneriter_match.group(1))
    
    # Extract unnormalized bestviolation
    violation_match = re.search(r'unnormalized bestviolation:([\d.e-]+)', line)
    if violation_match:
        data['unnormalized_bestviolation'] = float(violation_match.group(1))
    
    # Extract success
    success_match = re.search(r'success:(\d+)', line)
    if success_match:
        data['success'] = int(success_match.group(1))
    
    # Extract time
    time_match = re.search(r'time:([\d.]+)', line)
    if time_match:
        data['time'] = float(time_match.group(1))
    
    # Extract avgtime
    avgtime_match = re.search(r'avgtime:([\d.]+)', line)
    if avgtime_match:
        data['avgtime'] = float(avgtime_match.group(1))
    
    # Extract cglptime
    cglptime_match = re.search(r'cglptime:([\d.]+)', line)
    if cglptime_match:
        data['cglptime'] = float(cglptime_match.group(1))
    
    # Extract sublptime
    sublptime_match = re.search(r'sublptime:([\d.]+)', line)
    if sublptime_match:
        data['sublptime'] = float(sublptime_match.group(1))
    
    # Extract subsciptime
    subsciptime_match = re.search(r'subsciptime:([\d.]+)', line)
    if subsciptime_match:
        data['subsciptime'] = float(subsciptime_match.group(1))
    
    # Check if it's an ABORT line
    if 'ABORT:' in line:
        data['is_abort'] = True
        # Extract iteration and violation from abort message
        abort_match = re.search(r'Iteration (\d+), violation ([\d.e-]+)', line)
        if abort_match:
            data['abort_iteration'] = int(abort_match.group(1))
            data['abort_violation'] = float(abort_match.group(2))
        # Extract tolerance
        tolerance_match = re.search(r'tolerance ([\d.e-]+)', line)
        if tolerance_match:
            data['abort_tolerance'] = float(tolerance_match.group(1))
    else:
        data['is_abort'] = False
    
    return data

def main():
    if len(sys.argv) != 3:
        print("Usage: python parse_logs_to_csv.py <input_log_file> <output_csv_file>")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    
    # Define all possible columns
    columns = [
        'line_number',
        'first_aggrow_ind',
        'sanity_cut_efficacy',
        'nrelaxcols_total',
        'nint_total',
        'ncols_vbd',
        'nint_vbd',
        'nrows',
        'niters',
        'scipiter',
        'fixiter',
        'heuriter',
        'inneriter',
        'unnormalized_bestviolation',
        'success',
        'time',
        'avgtime',
        'cglptime',
        'sublptime',
        'subsciptime',
        'is_abort',
        'abort_iteration',
        'abort_violation',
        'abort_tolerance'
    ]
    
    parsed_data = []
    
    # Parse the input file
    try:
        with open(input_file, 'r') as f:
            for line_num, line in enumerate(f, 1):
                line = line.strip()
                if line and '[cuts.c:' in line:  # Only process cuts debug lines
                    data = parse_log_line(line)
                    data['line_number'] = line_num
                    parsed_data.append(data)
    except FileNotFoundError:
        print(f"Error: Input file '{input_file}' not found.")
        sys.exit(1)
    except Exception as e:
        print(f"Error reading input file: {e}")
        sys.exit(1)
    
    # Write to CSV
    try:
        with open(output_file, 'w', newline='') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=columns)
            writer.writeheader()
            
            for data in parsed_data:
                # Fill missing columns with None/empty values
                row = {}
                for col in columns:
                    row[col] = data.get(col, None)
                writer.writerow(row)
                
        print(f"Successfully parsed {len(parsed_data)} lines and saved to '{output_file}'")
        
    except Exception as e:
        print(f"Error writing CSV file: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()
