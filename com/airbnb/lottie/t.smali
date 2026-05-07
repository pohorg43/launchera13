.class public final enum Lcom/airbnb/lottie/t;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/airbnb/lottie/t;

.field public static final enum b:Lcom/airbnb/lottie/t;

.field public static final synthetic c:[Lcom/airbnb/lottie/t;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/airbnb/lottie/t;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/t;->a:Lcom/airbnb/lottie/t;

    new-instance v1, Lcom/airbnb/lottie/t;

    const-string v3, "HARDWARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/airbnb/lottie/t;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/airbnb/lottie/t;->b:Lcom/airbnb/lottie/t;

    new-instance v3, Lcom/airbnb/lottie/t;

    const-string v5, "SOFTWARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/airbnb/lottie/t;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/airbnb/lottie/t;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/airbnb/lottie/t;->c:[Lcom/airbnb/lottie/t;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/t;
    .registers 2

    const-class v0, Lcom/airbnb/lottie/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/t;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/t;
    .registers 1

    sget-object v0, Lcom/airbnb/lottie/t;->c:[Lcom/airbnb/lottie/t;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/t;

    return-object v0
.end method
