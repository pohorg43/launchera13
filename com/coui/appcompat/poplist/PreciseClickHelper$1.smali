.class Lcom/coui/appcompat/poplist/PreciseClickHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/PreciseClickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/poplist/PreciseClickHelper;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/poplist/PreciseClickHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$1;->a:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$1;->a:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/PreciseClickHelper;->c:[Ljava/lang/Float;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p1, v0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$1;->a:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->c:[Ljava/lang/Float;

    const/4 p1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p0, p1

    :cond_24
    return v0
.end method
