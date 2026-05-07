.class public final enum Lh3/d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh3/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lh3/d;

.field public static final enum b:Lh3/d;

.field public static final synthetic c:[Lh3/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lh3/d;

    const-string v1, "TOP_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh3/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh3/d;->a:Lh3/d;

    new-instance v1, Lh3/d;

    const-string v3, "BOTTOM_UP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lh3/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lh3/d;->b:Lh3/d;

    const/4 v3, 0x2

    new-array v3, v3, [Lh3/d;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lh3/d;->c:[Lh3/d;

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

.method public static valueOf(Ljava/lang/String;)Lh3/d;
    .registers 2

    const-class v0, Lh3/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh3/d;

    return-object p0
.end method

.method public static values()[Lh3/d;
    .registers 1

    sget-object v0, Lh3/d;->c:[Lh3/d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh3/d;

    return-object v0
.end method
