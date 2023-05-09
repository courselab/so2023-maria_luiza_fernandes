OUTPUT_FORMAT(binary)   	 
SECTIONS
{
    	. = 0x7C00;   	 
    	.text :
    {
      *(.text)          	
      *(.rodata)   	
    }    
    	. = 0x7c00 + 510;    
    	.signature :    	 
    {
    	BYTE(0x55)
        	BYTE(0xAA)
    	}
    __END_STACK__ = 0x7e00 + 0x200;    
}
STARTUP(hw_rt0.o);
INPUT(hw_utils.o)
