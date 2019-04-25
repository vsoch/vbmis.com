    # Try joining them all - might need algorithm in future to distinguish right and left (split brain first)
    #merged = []
    #for cnt in cnts:
    #    merged = merged + cnt.tolist()
    # If the start of one is within a small distance of the end of another, they should be joined
    #merged = []
    #idx = 0
    #while idx != len(cnts)-1:
    #    current = cnts[idx].tolist()
    #    next = cnts[idx+1].tolist()
    #    current_last = current[-1][0]
    #    next_first = cnts[c+1][0][0]
    #    distance = pdist([current_last,next_first],"euclidean")[0]
    #    if distance < 5:
    #        merged.append(current + next)
    #        idx = idx + 2

