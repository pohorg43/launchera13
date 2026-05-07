.class public final synthetic Lcom/android/launcher3/a2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;FF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a2;->a:Landroid/view/View;

    iput p2, p0, Lcom/android/launcher3/a2;->b:F

    iput p3, p0, Lcom/android/launcher3/a2;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/a2;->a:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/a2;->b:F

    iget p0, p0, Lcom/android/launcher3/a2;->c:F

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager;->g(Landroid/view/View;FF)V

    return-void
.end method
