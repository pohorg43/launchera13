.class public final Lcom/android/launcher3/search/SearchEntryView$animatePress$2;
.super Lcom/coui/appcompat/animation/COUIAnimationListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/search/SearchEntryView;->animatePress(Landroid/animation/ValueAnimator;[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $pressAnimationRecorder:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntryView$animatePress$2;->$pressAnimationRecorder:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUIAnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryView$animatePress$2;->$pressAnimationRecorder:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_d
    return-void
.end method
