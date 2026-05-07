.class final enum Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/expression/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum ABS:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum ACOS:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum ASIN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum ATAN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum COS:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum COSH:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum DIGIT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum EQ:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum EQS:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum GE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum GT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum IFELSE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum INT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum INVALID:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum ISNULL:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum LE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum LEN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum LT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum MAX:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum MIN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum NE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum NOT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum RAND:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum REPLACE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum ROUND:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum SIN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum SINH:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum SQRT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum SUBSTR:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

.field public static final enum TAN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;


# direct methods
.method public static constructor <clinit>()V
    .registers 32

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->INVALID:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v3, "RAND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->RAND:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v3, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v5, "SIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->SIN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v5, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v7, "COS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->COS:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v7, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v9, "TAN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->TAN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v9, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v11, "ASIN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->ASIN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v11, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v13, "ACOS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->ACOS:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v13, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v15, "ATAN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->ATAN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v15, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v14, "SINH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->SINH:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v14, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v12, "COSH"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->COSH:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v12, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v10, "SQRT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->SQRT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v10, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v8, "ABS"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->ABS:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v8, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v6, "LEN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->LEN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v6, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v4, "ROUND"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->ROUND:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v4, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v2, "INT"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->INT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v6, "MIN"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->MIN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v6, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v4, "MAX"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->MAX:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v4, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v2, "DIGIT"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->DIGIT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v6, "EQ"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->EQ:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v6, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v4, "NE"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->NE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v4, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v2, "GE"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->GE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v6, "GT"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->GT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v6, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v4, "LE"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->LE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v4, "LT"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->LT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v4, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v6, "ISNULL"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->ISNULL:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v6, "NOT"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->NOT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v4, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v6, "IFELSE"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->IFELSE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v6, "EQS"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->EQS:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v4, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v6, "SUBSTR"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->SUBSTR:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    new-instance v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const-string v6, "REPLACE"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->REPLACE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const/16 v4, 0x1e

    new-array v4, v4, [Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v2, v4, v0

    sput-object v4, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->$VALUES:[Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;
    .registers 2

    const-class v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    return-object p0
.end method

.method public static values()[Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;
    .registers 1

    sget-object v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->$VALUES:[Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-virtual {v0}, [Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    return-object v0
.end method
