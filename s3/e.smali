.class public final enum Ls3/e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls3/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls3/e;

.field public static final enum b:Ls3/e;

.field public static final enum c:Ls3/e;

.field public static final synthetic d:[Ls3/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Ls3/e;

    const-string v1, "SUSPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls3/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls3/e;->a:Ls3/e;

    new-instance v1, Ls3/e;

    const-string v3, "DROP_OLDEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls3/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls3/e;->b:Ls3/e;

    new-instance v3, Ls3/e;

    const-string v5, "DROP_LATEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ls3/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ls3/e;->c:Ls3/e;

    const/4 v5, 0x3

    new-array v5, v5, [Ls3/e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ls3/e;->d:[Ls3/e;

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

.method public static valueOf(Ljava/lang/String;)Ls3/e;
    .registers 2

    const-class v0, Ls3/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls3/e;

    return-object p0
.end method

.method public static values()[Ls3/e;
    .registers 1

    sget-object v0, Ls3/e;->d:[Ls3/e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls3/e;

    return-object v0
.end method
