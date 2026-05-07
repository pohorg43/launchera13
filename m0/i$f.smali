.class public final enum Lm0/i$f;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm0/i$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lm0/i$f;

.field public static final enum b:Lm0/i$f;

.field public static final enum c:Lm0/i$f;

.field public static final synthetic d:[Lm0/i$f;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lm0/i$f;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm0/i$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm0/i$f;->a:Lm0/i$f;

    new-instance v1, Lm0/i$f;

    const-string v3, "SWITCH_TO_SOURCE_SERVICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lm0/i$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm0/i$f;->b:Lm0/i$f;

    new-instance v3, Lm0/i$f;

    const-string v5, "DECODE_DATA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lm0/i$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lm0/i$f;->c:Lm0/i$f;

    const/4 v5, 0x3

    new-array v5, v5, [Lm0/i$f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lm0/i$f;->d:[Lm0/i$f;

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

.method public static valueOf(Ljava/lang/String;)Lm0/i$f;
    .registers 2

    const-class v0, Lm0/i$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm0/i$f;

    return-object p0
.end method

.method public static values()[Lm0/i$f;
    .registers 1

    sget-object v0, Lm0/i$f;->d:[Lm0/i$f;

    invoke-virtual {v0}, [Lm0/i$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm0/i$f;

    return-object v0
.end method
