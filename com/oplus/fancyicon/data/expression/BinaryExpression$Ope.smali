.class public final enum Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/expression/BinaryExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

.field public static final enum ADD:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

.field public static final enum DIV:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

.field public static final enum INVALID:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

.field public static final enum MIN:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

.field public static final enum MOD:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

.field public static final enum MUL:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->INVALID:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    new-instance v1, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    const-string v3, "ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->ADD:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    new-instance v3, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    const-string v5, "MIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->MIN:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    new-instance v5, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    const-string v7, "MUL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->MUL:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    new-instance v7, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    const-string v9, "DIV"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->DIV:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    new-instance v9, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    const-string v11, "MOD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->MOD:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->$VALUES:[Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;
    .registers 2

    const-class v0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    return-object p0
.end method

.method public static values()[Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;
    .registers 1

    sget-object v0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->$VALUES:[Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    invoke-virtual {v0}, [Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    return-object v0
.end method
