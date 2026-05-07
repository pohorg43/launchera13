.class public final enum Ln3/t;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln3/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln3/t;

.field public static final enum b:Ln3/t;

.field public static final enum c:Ln3/t;

.field public static final enum d:Ln3/t;

.field public static final synthetic e:[Ln3/t;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ln3/t;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln3/t;->a:Ln3/t;

    new-instance v0, Ln3/t;

    const-string v1, "PROTECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln3/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln3/t;->b:Ln3/t;

    new-instance v0, Ln3/t;

    const-string v1, "INTERNAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln3/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln3/t;->c:Ln3/t;

    new-instance v0, Ln3/t;

    const-string v1, "PRIVATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ln3/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln3/t;->d:Ln3/t;

    invoke-static {}, Ln3/t;->a()[Ln3/t;

    move-result-object v0

    sput-object v0, Ln3/t;->e:[Ln3/t;

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

.method public static final synthetic a()[Ln3/t;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ln3/t;

    sget-object v1, Ln3/t;->a:Ln3/t;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ln3/t;->b:Ln3/t;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ln3/t;->c:Ln3/t;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ln3/t;->d:Ln3/t;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ln3/t;
    .registers 2

    const-class v0, Ln3/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln3/t;

    return-object p0
.end method

.method public static values()[Ln3/t;
    .registers 1

    sget-object v0, Ln3/t;->e:[Ln3/t;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/t;

    return-object v0
.end method
