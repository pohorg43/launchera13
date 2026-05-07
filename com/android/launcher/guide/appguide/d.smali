.class public final synthetic Lcom/android/launcher/guide/appguide/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/guide/appguide/AppGuidePage;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/guide/appguide/AppGuidePage;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/d;->a:Lcom/android/launcher/guide/appguide/AppGuidePage;

    iput-object p2, p0, Lcom/android/launcher/guide/appguide/d;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/d;->a:Lcom/android/launcher/guide/appguide/AppGuidePage;

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/d;->b:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->d(Lcom/android/launcher/guide/appguide/AppGuidePage;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
