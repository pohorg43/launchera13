.class public final synthetic Lcom/android/wm/shell/pip/phone/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ComponentName;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/pip/phone/i;->a:I

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/i;->b:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/i;->c:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/i;->d:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/android/wm/shell/pip/phone/i;->a:I

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/i;->b:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/i;->c:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/i;->d:Landroid/view/SurfaceControl;

    check-cast p1, Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->c(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method
