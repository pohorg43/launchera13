.class public final enum Ly2/g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly2/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ly2/g;

.field public static final enum b:Ly2/g;

.field public static final enum c:Ly2/g;

.field public static final synthetic d:[Ly2/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Ly2/g;

    const-string v1, "SYNCHRONIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly2/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly2/g;->a:Ly2/g;

    new-instance v1, Ly2/g;

    const-string v3, "PUBLICATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly2/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly2/g;->b:Ly2/g;

    new-instance v3, Ly2/g;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ly2/g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly2/g;->c:Ly2/g;

    const/4 v5, 0x3

    new-array v5, v5, [Ly2/g;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ly2/g;->d:[Ly2/g;

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

.method public static valueOf(Ljava/lang/String;)Ly2/g;
    .registers 2

    const-class v0, Ly2/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly2/g;

    return-object p0
.end method

.method public static values()[Ly2/g;
    .registers 1

    sget-object v0, Ly2/g;->d:[Ly2/g;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly2/g;

    return-object v0
.end method
