.class public final enum Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/expression/UnaryExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

.field public static final enum INVALID:Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

.field public static final enum MIN:Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;->INVALID:Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    new-instance v1, Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    const-string v3, "MIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;->MIN:Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;->$VALUES:[Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;
    .registers 2

    const-class v0, Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    return-object p0
.end method

.method public static values()[Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;
    .registers 1

    sget-object v0, Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;->$VALUES:[Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    invoke-virtual {v0}, [Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    return-object v0
.end method
