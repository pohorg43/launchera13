.class public final enum Ln3/s;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln3/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln3/s;

.field public static final enum b:Ln3/s;

.field public static final enum c:Ln3/s;

.field public static final synthetic d:[Ln3/s;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Ln3/s;

    const-string v1, "INVARIANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln3/s;->a:Ln3/s;

    new-instance v1, Ln3/s;

    const-string v3, "IN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln3/s;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln3/s;->b:Ln3/s;

    new-instance v3, Ln3/s;

    const-string v5, "OUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ln3/s;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln3/s;->c:Ln3/s;

    const/4 v5, 0x3

    new-array v5, v5, [Ln3/s;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ln3/s;->d:[Ln3/s;

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

.method public static valueOf(Ljava/lang/String;)Ln3/s;
    .registers 2

    const-class v0, Ln3/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln3/s;

    return-object p0
.end method

.method public static values()[Ln3/s;
    .registers 1

    sget-object v0, Ln3/s;->d:[Ln3/s;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/s;

    return-object v0
.end method
