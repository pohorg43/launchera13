.class Lcom/coui/appcompat/progressbar/COUILoadingView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/progressbar/COUILoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/progressbar/COUILoadingView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/progressbar/COUILoadingView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$1;->a:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/Rect;)V
    .registers 4

    if-nez p1, :cond_c

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$1;->a:Lcom/coui/appcompat/progressbar/COUILoadingView;

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->c:I

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->d:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_c
    return-void
.end method

.method public b(I)Ljava/lang/CharSequence;
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$1;->a:Lcom/coui/appcompat/progressbar/COUILoadingView;

    iget-object p1, p1, Lcom/coui/appcompat/progressbar/COUILoadingView;->k:Ljava/lang/String;

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/CharSequence;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public d()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public e()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public f(IIZ)V
    .registers 4

    return-void
.end method

.method public g(FF)I
    .registers 5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1b

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$1;->a:Lcom/coui/appcompat/progressbar/COUILoadingView;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->c:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1b

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_1b

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->d:I

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method public h()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method
