.class public final Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;
.super Lcom/coui/appcompat/tooltips/COUIToolTips;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView$Companion;

.field private static final RELAY_SHOWN_KEY:Ljava/lang/String; = "dock_view_relay_tips_shown"

.field private static final TAG:Ljava/lang/String; = "RecentRelayTipsView"


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHadShown:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->Companion:Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mAnchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120431

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->reflectionDismissButton()V

    iget-object p2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->mContext:Landroid/content/Context;

    const-string v0, "dock_view_relay_tips_shown"

    invoke-static {p2, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->mHadShown:Z

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->reflectionDismissButton$lambda-3$lambda-2(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->reflectionDismissButton$lambda-1$lambda-0(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;Landroid/view/View;)V

    return-void
.end method

.method private final reflectionDismissButton()V
    .registers 4

    :try_start_0
    const-class v0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mMainPanel"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_13

    :cond_f
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :goto_13
    const/4 v1, 0x0

    if-nez v0, :cond_18

    move-object v0, v1

    goto :goto_1c

    :cond_18
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1c
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_23

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_24

    :cond_23
    move-object v0, v1

    :goto_24
    if-nez v0, :cond_27

    goto :goto_41

    :cond_27
    const v2, 0x7f0a01d8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_31

    goto :goto_41

    :cond_31
    new-instance v1, Lcom/android/systemui/shared/rotation/b;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/rotation/b;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Ly2/p;->a:Ly2/p;
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    goto :goto_41

    :catchall_3c
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_41
    invoke-static {v1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_48

    goto :goto_5b

    :cond_48
    const-string v1, "reflectionDismissButton failed, e="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentRelayTipsView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/guide/j;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/j;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :goto_5b
    return-void
.end method

.method private static final reflectionDismissButton$lambda-1$lambda-0(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;Landroid/view/View;)V
    .registers 3

    const-string p1, "$this_runCatching"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "RecentRelayTipsView"

    const-string v0, "click dismiss."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->saveTipsDismiss()V

    return-void
.end method

.method private static final reflectionDismissButton$lambda-3$lambda-2(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "RecentRelayTipsView"

    const-string v1, "on dismiss."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->saveTipsDismiss()V

    return-void
.end method

.method private final saveTipsDismiss()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->mHadShown:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "RecentRelayTipsView"

    const-string v1, "saveTipsDismiss."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->mContext:Landroid/content/Context;

    const-string v1, "dock_view_relay_tips_shown"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->mHadShown:Z

    return-void
.end method


# virtual methods
.method public final dismiss(ZZ)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->mHadShown:Z

    if-eqz v0, :cond_b

    goto :goto_28

    :cond_b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "dismiss, "

    const-string v1, ", "

    const-string v2, "RecentRelayTipsView"

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/common/multiapp/b;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    :cond_1a
    if-eqz p2, :cond_20

    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismissImmediately()V

    goto :goto_23

    :cond_20
    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    :goto_23
    if-eqz p1, :cond_28

    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->saveTipsDismiss()V

    :cond_28
    :goto_28
    return-void
.end method

.method public final show()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->mHadShown:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "RecentRelayTipsView"

    const-string v1, "show."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->mAnchor:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->show(Landroid/view/View;)V

    :cond_1f
    return-void
.end method
