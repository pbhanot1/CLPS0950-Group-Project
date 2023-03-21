

function output = eye_detector_1(input_face)

    eye_template = [0 0 ; 0 0];

    left_eye = true;
    right_eye = true;

    if input_face(2:3,3:4) == eye_template
        left_eye = true;    
    else
        left_eye = false;
    end

    if input_face(2:3,3:4) == eye_template
        right_eye = true;    
    else
        right_eye = false;
    end

    if left_eye && right_eye == true
        output = "Eyes Detected";
    else
        output = "No eyes detected";

    end

    disp(output)
   
    
end