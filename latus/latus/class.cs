using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace latus
{
    public class OverwatchCharacter
    {
        public int CharacterId { get; set; }
        public string CharacterName { get; set; }
        public string CharacterType { get; set; }
        public string CharacterColor { get; set; }

        public OverwatchCharacter(string CharacterId, string CharacterName, string CharacterType, string CharacterColor)
        {
            int temp = 0;
            int.TryParse(CharacterId, out temp);
            this.CharacterId = temp;
            this.CharacterName = CharacterName;
            this.CharacterType = CharacterType;
            this.CharacterColor = CharacterColor;
        }
    }

}