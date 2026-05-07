.class public final Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx2/a;


# instance fields
.field private final displayMetricsProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx2/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Landroid/util/DisplayMetrics;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;->displayMetricsProvider:Lx2/a;

    return-void
.end method

.method public static create(Lx2/a;)Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Landroid/util/DisplayMetrics;",
            ">;)",
            "Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;-><init>(Lx2/a;)V

    return-object v0
.end method

.method public static newInstance(Landroid/util/DisplayMetrics;)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;-><init>(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;->displayMetricsProvider:Lx2/a;

    invoke-interface {p0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/DisplayMetrics;

    invoke-static {p0}, Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;->newInstance(Landroid/util/DisplayMetrics;)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;->get()Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p0

    return-object p0
.end method
