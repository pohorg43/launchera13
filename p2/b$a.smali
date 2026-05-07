.class public final enum Lp2/b$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp2/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lp2/b$a;

.field public static final enum c:Lp2/b$a;

.field public static final synthetic d:[Lp2/b$a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x7

    new-array v0, v0, [Lp2/b$a;

    new-instance v1, Lp2/b$a;

    const-string v2, "Nearest"

    const/4 v3, 0x0

    const/16 v4, 0x2600

    invoke-direct {v1, v2, v3, v4}, Lp2/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lp2/b$a;->b:Lp2/b$a;

    aput-object v1, v0, v3

    new-instance v1, Lp2/b$a;

    const-string v2, "Linear"

    const/4 v3, 0x1

    const/16 v4, 0x2601

    invoke-direct {v1, v2, v3, v4}, Lp2/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lp2/b$a;->c:Lp2/b$a;

    aput-object v1, v0, v3

    new-instance v1, Lp2/b$a;

    const-string v2, "MipMap"

    const/4 v3, 0x2

    const/16 v4, 0x2703

    invoke-direct {v1, v2, v3, v4}, Lp2/b$a;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lp2/b$a;

    const-string v2, "MipMapNearestNearest"

    const/4 v3, 0x3

    const/16 v5, 0x2700

    invoke-direct {v1, v2, v3, v5}, Lp2/b$a;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lp2/b$a;

    const-string v2, "MipMapLinearNearest"

    const/4 v3, 0x4

    const/16 v5, 0x2701

    invoke-direct {v1, v2, v3, v5}, Lp2/b$a;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lp2/b$a;

    const-string v2, "MipMapNearestLinear"

    const/4 v3, 0x5

    const/16 v5, 0x2702

    invoke-direct {v1, v2, v3, v5}, Lp2/b$a;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lp2/b$a;

    const-string v2, "MipMapLinearLinear"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v4}, Lp2/b$a;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    sput-object v0, Lp2/b$a;->d:[Lp2/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lp2/b$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lp2/b$a;
    .registers 2

    const-class v0, Lp2/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp2/b$a;

    return-object p0
.end method

.method public static values()[Lp2/b$a;
    .registers 1

    sget-object v0, Lp2/b$a;->d:[Lp2/b$a;

    invoke-virtual {v0}, [Lp2/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp2/b$a;

    return-object v0
.end method
