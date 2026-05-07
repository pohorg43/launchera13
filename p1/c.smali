.class public Lp1/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp1/c$a;
    }
.end annotation


# instance fields
.field public a:Lp1/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/heytap/browser/a;

    invoke-direct {v0}, Lcom/heytap/browser/a;-><init>()V

    iput-object v0, p0, Lp1/c;->a:Lp1/a;

    return-void
.end method


# virtual methods
.method public a(Lo1/b;Landroid/view/WindowManager;Landroid/view/Window;)V
    .registers 6

    iget-object v0, p0, Lp1/c;->a:Lp1/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/heytap/browser/a;

    invoke-direct {v0}, Lcom/heytap/browser/a;-><init>()V

    iput-object v0, p0, Lp1/c;->a:Lp1/a;

    :cond_b
    iget-object p0, p0, Lp1/c;->a:Lp1/a;

    check-cast p0, Lcom/heytap/browser/a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OverlayBrowserCallback"

    const-string v1, "OverlayBrowserCallback create"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lp1/c$a;

    invoke-direct {v0}, Lp1/c$a;-><init>()V

    iput-object v0, p0, Lcom/heytap/browser/a;->a:Lp1/c$a;

    iput-object p1, v0, Lp1/c$a;->b:Lo1/b;

    iput-object p3, v0, Lp1/c$a;->e:Landroid/view/Window;

    iput-object p2, v0, Lp1/c$a;->c:Landroid/view/WindowManager;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iget-object p2, p0, Lcom/heytap/browser/a;->a:Lp1/c$a;

    iget-object p2, p2, Lp1/c$a;->c:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object p2, p0, Lcom/heytap/browser/a;->a:Lp1/c$a;

    iget p3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    neg-int p1, p1

    iput p1, p2, Lp1/c$a;->d:I

    iget-object p0, p0, Lcom/heytap/browser/a;->a:Lp1/c$a;

    iget-object p0, p0, Lp1/c$a;->a:Landroid/os/Handler;

    const/4 p1, 0x5

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x3e8

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
