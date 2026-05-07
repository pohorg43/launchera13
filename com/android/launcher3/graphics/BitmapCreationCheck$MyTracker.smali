.class Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/BitmapCreationCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;
    }
.end annotation


# instance fields
.field private final mCurrentThreadDrawing:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/graphics/b;->a:Lcom/android/launcher3/graphics/b;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->mCurrentThreadDrawing:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/BitmapCreationCheck$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/Boolean;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->lambda$new$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)Ljava/lang/ThreadLocal;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->mCurrentThreadDrawing:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->onBitmapCreated()V

    return-void
.end method

.method private static synthetic lambda$new$0()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private onBitmapCreated()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->mCurrentThreadDrawing:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1a

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "BitmapCreationCheck"

    const-string v1, "Bitmap created during draw pass"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;-><init>(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
