.class public abstract Lcom/android/launcher/guide/AbsGuideView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/AbsGuideView$OnGuideFinishCallback;
    }
.end annotation


# static fields
.field public static final CLICK_OK_OR_X:Ljava/lang/String; = "click_ok_or_x"

.field public static final INTERRUPT_BY_BACK_KEY:Ljava/lang/String; = "back_key"

.field public static final INTERRUPT_BY_HOME_KEY:Ljava/lang/String; = "home_key"

.field public static final INTERRUPT_BY_ON_PAUSE:Ljava/lang/String; = "on_pause"

.field public static final INTERRUPT_BY_OTHER_CASE:Ljava/lang/String; = "other_case"

.field public static final NEAR_PLAY_FINISH:F = 0.98f

.field public static final SHOW_VIDEO_VIEW_DELAY:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "AbsGuideView"


# instance fields
.field private mOnGuideFinishCallback:Lcom/android/launcher/guide/AbsGuideView$OnGuideFinishCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/guide/AbsGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/android/launcher/guide/a;->b:Lcom/android/launcher/guide/a;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/guide/AbsGuideView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public finishGuide(Ljava/lang/String;)V
    .registers 5

    const-string v0, "AbsGuideView"

    :try_start_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string v1, "finishGuide: removeView."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_13
    const-string v1, "finishGuide: parentView is null!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    invoke-virtual {p0}, Lcom/android/launcher/guide/AbsGuideView;->release()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception v1

    const-string v2, "finishGuide exception: "

    invoke-static {v2, v1, v0}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_22
    iget-object p0, p0, Lcom/android/launcher/guide/AbsGuideView;->mOnGuideFinishCallback:Lcom/android/launcher/guide/AbsGuideView$OnGuideFinishCallback;

    if-eqz p0, :cond_29

    invoke-interface {p0, p1}, Lcom/android/launcher/guide/AbsGuideView$OnGuideFinishCallback;->onGuideFinished(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public abstract initViews()V
.end method

.method public interrupt(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/AbsGuideView;->finishGuide(Ljava/lang/String;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/launcher/guide/AbsGuideView;->initViews()V

    return-void
.end method

.method public abstract release()V
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public setOnGuideFinishCallback(Lcom/android/launcher/guide/AbsGuideView$OnGuideFinishCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/AbsGuideView;->mOnGuideFinishCallback:Lcom/android/launcher/guide/AbsGuideView$OnGuideFinishCallback;

    return-void
.end method

.method public abstract showInState(Lcom/android/launcher3/LauncherState;)Z
.end method
