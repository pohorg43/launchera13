.class public final enum Lc3/a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc3/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc3/a;

.field public static final enum b:Lc3/a;

.field public static final enum c:Lc3/a;

.field public static final synthetic d:[Lc3/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lc3/a;

    const-string v1, "COROUTINE_SUSPENDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc3/a;->a:Lc3/a;

    new-instance v1, Lc3/a;

    const-string v3, "UNDECIDED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc3/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc3/a;->b:Lc3/a;

    new-instance v3, Lc3/a;

    const-string v5, "RESUMED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc3/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc3/a;->c:Lc3/a;

    const/4 v5, 0x3

    new-array v5, v5, [Lc3/a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lc3/a;->d:[Lc3/a;

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

.method public static valueOf(Ljava/lang/String;)Lc3/a;
    .registers 2

    const-class v0, Lc3/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc3/a;

    return-object p0
.end method

.method public static values()[Lc3/a;
    .registers 1

    sget-object v0, Lc3/a;->d:[Lc3/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc3/a;

    return-object v0
.end method
