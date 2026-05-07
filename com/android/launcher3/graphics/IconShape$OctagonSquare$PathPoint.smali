.class Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/IconShape$OctagonSquare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathPoint"
.end annotation


# instance fields
.field private final mEnd:Landroid/graphics/Point;

.field private final mLineTo:Landroid/graphics/Point;

.field private final mQuadCtrl1:Landroid/graphics/Point;

.field private final mQuadCtrl2:Landroid/graphics/Point;

.field private final mQuadEnd1:Landroid/graphics/Point;

.field private final mQuadEnd2:Landroid/graphics/Point;

.field private final mStart:Landroid/graphics/Point;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mStart:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mQuadCtrl1:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mQuadEnd1:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mLineTo:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mQuadCtrl2:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mQuadEnd2:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mEnd:Landroid/graphics/Point;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/IconShape$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;-><init>()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mEnd:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mStart:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/graphics/Point;FF)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->set(Landroid/graphics/Point;FF)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mQuadCtrl1:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mQuadEnd1:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mLineTo:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mQuadCtrl2:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mQuadEnd2:Landroid/graphics/Point;

    return-object p0
.end method

.method private static set(Landroid/graphics/Point;FF)V
    .registers 3

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Point;->x:I

    float-to-int p1, p2

    iput p1, p0, Landroid/graphics/Point;->y:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "PathPoint:\n"

    const-string v1, "Start: "

    invoke-static {v0, v1}, Landroid/support/v4/media/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mStart:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mQuadCtrl1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mQuadCtrl1:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mQuadEnd1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mQuadEnd1:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mLineTo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mLineTo:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mQuadCtrl2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mQuadCtrl2:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mQuadEnd2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mQuadEnd2:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mEnd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->mEnd:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
