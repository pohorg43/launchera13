.class public Lcom/oplus/compatui/OplusCompatUILayout;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;
    }
.end annotation


# static fields
.field private static final RATIO_16_9:F = 1.78f

.field private static final RATIO_4_3:F = 1.33f

.field private static final TAG:Ljava/lang/String; = "OplusCompatUILayout"


# instance fields
.field private mBottomBtnMarginBottom:I

.field private mBottomBtnMarginBottom4_3:I

.field private mInfoBtn:Landroid/widget/ImageButton;

.field private mInfoBtnHorizontalMarginBottom:I

.field private mInfoBtnHorizontalMarginRight:I

.field private mInfoBtnVerticalMarginBottom:I

.field private mInfoBtnVerticalMarginRight:I

.field private mInfoHintHorizontalMarginBottom:I

.field private mInfoHintHorizontalMarginRight:I

.field private mInfoHintLayout:Landroid/view/View;

.field private mInfoHintParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field private mInfoHintVerticalMarginBottom:I

.field private mInfoHintVerticalMarginRight:I

.field private mInfoLayout:Landroid/widget/LinearLayout;

.field private mMoveBottomBtn:Landroid/widget/ImageButton;

.field private mMoveLeftBtn:Landroid/widget/ImageButton;

.field private mMoveRightBtn:Landroid/widget/ImageButton;

.field private mMoveTopBtn:Landroid/widget/ImageButton;

.field private mOnBtnClickListener:Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;

.field private mOrientation:I

.field private final mTmpLocation:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mToFullscreenBtn:Landroid/widget/ImageButton;

.field private mTopBtnMarginTop:I

.field private mTopBtnMarginTop4_3:I

.field private mUserId:I

.field private mWindowManager:Lcom/oplus/compatui/OplusCompatUIWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/compatui/OplusCompatUILayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/compatui/OplusCompatUILayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/compatui/OplusCompatUILayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->compact_info_detail_h_gap_right:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintHorizontalMarginRight:I

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->compact_info_detail_h_gap_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintHorizontalMarginBottom:I

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->compact_window_info_btn_h_right:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtnHorizontalMarginRight:I

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->compact_window_info_btn_h_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtnHorizontalMarginBottom:I

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->compact_info_detail_v_gap_right:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintVerticalMarginRight:I

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->compact_info_detail_v_gap_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintVerticalMarginBottom:I

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->compact_window_info_btn_v_right:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtnVerticalMarginRight:I

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->compact_window_info_btn_v_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtnVerticalMarginBottom:I

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->compact_button_margin_vertical_16_9:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTopBtnMarginTop:I

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mBottomBtnMarginBottom:I

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->compact_operate_button_margin_vertical4_3:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTopBtnMarginTop4_3:I

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mBottomBtnMarginBottom4_3:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mUserId:I

    return-void
.end method

.method public static synthetic a(Lcom/oplus/compatui/OplusCompatUILayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/compatui/OplusCompatUILayout;->startCompatibleActivityInSettings()V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/compatui/OplusCompatUILayout;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    return-object p0
.end method

.method private getViewTouchableRegion(Landroid/view/View;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    aget v1, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getViewTouchableRegion view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " rect="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " inoutInfo "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->logV(Ljava/lang/String;)V

    return-void
.end method

.method private getViewTouchableRegionRotation(Landroid/view/View;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    const/4 v4, 0x1

    aget v5, v3, v4

    aget v2, v3, v2

    aget v3, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getViewTouchableRegion rotation view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " rect="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " inoutInfo "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->logV(Ljava/lang/String;)V

    return-void
.end method

.method private initStateText()Landroid/text/SpannableString;
    .registers 6

    sget v0, Lcom/android/wm/shell/R$string;->switch_scale_popup_info_content:I

    sget v1, Lcom/android/wm/shell/R$string;->switch_scale_info_detail_jump_setting:I

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v3, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;

    iget-object v4, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    add-int/2addr v1, v2

    const/16 v0, 0x21

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroidx/core/view/a;

    invoke-direct {v0, p0}, Landroidx/core/view/a;-><init>(Lcom/oplus/compatui/OplusCompatUILayout;)V

    iput-object v0, v3, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;->a:Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;

    return-object v4
.end method

.method private logD(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/oplus/compatui/LogUtil;->getTagWithClassName()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "OplusCompatUILayout"

    invoke-static {p0, p1}, Lcom/oplus/compatui/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-static {p1}, Lcom/oplus/compatui/LogUtil;->logD(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method private logV(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/oplus/compatui/LogUtil;->getTagWithClassName()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "OplusCompatUILayout"

    invoke-static {p0, p1}, Lcom/oplus/compatui/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-static {p1}, Lcom/oplus/compatui/LogUtil;->logV(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method private onInfoClick()V
    .registers 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    return-void
.end method

.method private startCompatibleActivityInSettings()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mWindowManager:Lcom/oplus/compatui/OplusCompatUIWindowManager;

    invoke-virtual {v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->getCompatInfo()Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "startCompatibleActivityInSettings: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mWindowManager:Lcom/oplus/compatui/OplusCompatUIWindowManager;

    invoke-virtual {v1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->getCompatInfo()Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusCompatUILayout;->logV(Ljava/lang/String;)V

    :try_start_21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "oplus.intent.action.settings.COMPATIBLE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "launch_extra_pkg_key"

    iget-object v3, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mWindowManager:Lcom/oplus/compatui/OplusCompatUIWindowManager;

    invoke-virtual {v3}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->getCompatInfo()Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactPkg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_52} :catch_53

    goto :goto_5b

    :catch_53
    move-exception p0

    const-string v0, "Start compact settings activity error:"

    const-string v1, "OplusCompatUILayout"

    invoke-static {v0, p0, v1}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_5b
    return-void
.end method

.method private updateInfoView(II)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_6c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    const-string p2, "updateVI unexpected orientation "

    invoke-static {p2, p1}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->logD(Ljava/lang/String;)V

    goto/16 :goto_bb

    :cond_1c
    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/android/wm/shell/R$layout;->compact_alert_detail_v_layout:I

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    sget v1, Lcom/android/wm/shell/R$id;->compact_alert_detail_description_v:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintHorizontalMarginRight:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintHorizontalMarginBottom:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtnHorizontalMarginRight:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtnHorizontalMarginBottom:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtn:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_bb

    :cond_6c
    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v3, Lcom/android/wm/shell/R$layout;->compact_alert_detail_h_layout:I

    invoke-virtual {p1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    sget v2, Lcom/android/wm/shell/R$id;->compact_alert_detail_description_h:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintVerticalMarginRight:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintVerticalMarginBottom:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtnVerticalMarginRight:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtnVerticalMarginBottom:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtn:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_bb
    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    if-eqz p1, :cond_c6

    iget-object p2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2, p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_c6
    if-eqz v2, :cond_d6

    invoke-direct {p0}, Lcom/oplus/compatui/OplusCompatUILayout;->initStateText()Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_d6
    return-void
.end method


# virtual methods
.method public getCurrentPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mWindowManager:Lcom/oplus/compatui/OplusCompatUIWindowManager;

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->getCompatInfo()Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactPkg:Ljava/lang/String;

    return-object p0
.end method

.method public inject(Lcom/oplus/compatui/OplusCompatUIWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mWindowManager:Lcom/oplus/compatui/OplusCompatUIWindowManager;

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mOnBtnClickListener:Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/oplus/compatui/FastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveLeftBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1b

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mOnBtnClickListener:Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;

    invoke-interface {p1}, Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;->onMoveLeftClick()V

    const-string p1, "onClick move left"

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->logV(Ljava/lang/String;)V

    goto :goto_66

    :cond_1b
    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveRightBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2a

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mOnBtnClickListener:Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;

    invoke-interface {p1}, Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;->onMoveRightClick()V

    const-string p1, "onClick move right"

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->logV(Ljava/lang/String;)V

    goto :goto_66

    :cond_2a
    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveTopBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_39

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mOnBtnClickListener:Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;

    invoke-interface {p1}, Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;->onMoveTopClick()V

    const-string p1, "onClick move top"

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->logV(Ljava/lang/String;)V

    goto :goto_66

    :cond_39
    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveBottomBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_48

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mOnBtnClickListener:Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;

    invoke-interface {p1}, Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;->onMoveBottomClick()V

    const-string p1, "onClick move bottom"

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->logV(Ljava/lang/String;)V

    goto :goto_66

    :cond_48
    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mToFullscreenBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_5a

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mOnBtnClickListener:Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mWindowManager:Lcom/oplus/compatui/OplusCompatUIWindowManager;

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->getCompatInfo()Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactPkg:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;->onFullscreenClick(Ljava/lang/String;)V

    goto :goto_66

    :cond_5a
    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_66

    invoke-direct {p0}, Lcom/oplus/compatui/OplusCompatUILayout;->onInfoClick()V

    const-string p1, "onInfoClick"

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->logV(Ljava/lang/String;)V

    :cond_66
    :goto_66
    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 7

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onComputeInternalInsets root "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " inoutInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusCompatUILayout;->logV(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveLeftBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->getViewTouchableRegion(Landroid/view/View;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveRightBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->getViewTouchableRegion(Landroid/view/View;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveTopBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->getViewTouchableRegionRotation(Landroid/view/View;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveBottomBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->getViewTouchableRegionRotation(Landroid/view/View;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mToFullscreenBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->getViewTouchableRegion(Landroid/view/View;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->getViewTouchableRegion(Landroid/view/View;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    goto :goto_83

    :cond_7a
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :goto_83
    const-string v0, "onComputeInternalInsets inoutInfo "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->logV(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lcom/android/wm/shell/R$id;->size_compat_move_position_button_left:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveLeftBtn:Landroid/widget/ImageButton;

    sget v0, Lcom/android/wm/shell/R$id;->size_compat_move_position_button_right:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveRightBtn:Landroid/widget/ImageButton;

    sget v0, Lcom/android/wm/shell/R$id;->size_compat_move_position_button_top:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveTopBtn:Landroid/widget/ImageButton;

    sget v0, Lcom/android/wm/shell/R$id;->size_compat_move_position_button_bottom:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveBottomBtn:Landroid/widget/ImageButton;

    sget v0, Lcom/android/wm/shell/R$id;->size_compat_to_full_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mToFullscreenBtn:Landroid/widget/ImageButton;

    sget v0, Lcom/android/wm/shell/R$id;->size_compat_info:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/wm/shell/R$id;->size_compat_info_hint:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintParams:Landroid/view/ViewGroup$MarginLayoutParams;

    sget v0, Lcom/android/wm/shell/R$id;->size_compat_info_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveTopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveBottomBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mToFullscreenBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    aget v1, v1, v2

    iget-object v2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    aget v1, v1, v4

    iget-object v6, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v0, v3, v5, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    xor-int/2addr v2, v4

    const-string v3, "onInterceptTouchEvent: infohint Rect "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " xy "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " touchoutside "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusCompatUILayout;->logD(Ljava/lang/String;)V

    if-eqz v2, :cond_7b

    return v4

    :cond_7b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mWindowManager:Lcom/oplus/compatui/OplusCompatUIWindowManager;

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->relayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_ae

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    aget v1, v1, v2

    iget-object v2, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpLocation:[I

    aget v1, v1, v4

    iget-object v6, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v0, v3, v5, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Lcom/oplus/compatui/OplusCompatUILayout$1;

    invoke-direct {v3, p0}, Lcom/oplus/compatui/OplusCompatUILayout$1;-><init>(Lcom/oplus/compatui/OplusCompatUILayout;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v5, "onTouchEvent: infohint Rect "

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " xy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " touchoutside "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusCompatUILayout;->logD(Ljava/lang/String;)V

    if-eqz v3, :cond_ae

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_9d

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_ad

    :cond_9d
    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_ad
    return v4

    :cond_ae
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setInfoButtonVisibility(Z)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    move v3, v2

    goto :goto_a

    :cond_9
    move v3, v1

    :goto_a
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-nez p1, :cond_16

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    if-eqz p1, :cond_33

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mUserId:I

    const-string v1, "compact_window_switch_info_detail"

    invoke-static {p1, v1, v0, v2}, Lcom/oplus/compatui/OplusSharedPrefHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p1

    if-nez p1, :cond_33

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mInfoHintLayout:Landroid/view/View;

    if-eqz p1, :cond_33

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mUserId:I

    const/4 v0, 0x1

    invoke-static {p1, v1, p0, v0}, Lcom/oplus/compatui/OplusSharedPrefHelper;->putBoolean(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_33
    return-void
.end method

.method public setMovePosBtnVisibility(ZZZZ)V
    .registers 8

    const-string v0, "setMovePosBtnVisibility left="

    const-string v1, " top="

    const-string v2, " right="

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusCompatUILayout;->logV(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveLeftBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_25

    move p1, v1

    goto :goto_26

    :cond_25
    move p1, v2

    :goto_26
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveTopBtn:Landroid/widget/ImageButton;

    if-eqz p2, :cond_2f

    move p2, v1

    goto :goto_30

    :cond_2f
    move p2, v2

    :goto_30
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveRightBtn:Landroid/widget/ImageButton;

    if-eqz p3, :cond_39

    move p2, v1

    goto :goto_3a

    :cond_39
    move p2, v2

    :goto_3a
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveBottomBtn:Landroid/widget/ImageButton;

    if-eqz p4, :cond_42

    goto :goto_43

    :cond_42
    move v1, v2

    :goto_43
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setOnBtnClickListener(Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mOnBtnClickListener:Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;

    return-void
.end method

.method public setToFullButtonVisibility(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mToFullscreenBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public updateInfoLayout(II)V
    .registers 4

    iget v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mOrientation:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mOrientation:I

    invoke-direct {p0, p1, p2}, Lcom/oplus/compatui/OplusCompatUILayout;->updateInfoView(II)V

    :cond_9
    return-void
.end method

.method public updateMovePosBtnLayout(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)V
    .registers 6

    iget v0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatRatio:F

    const v1, 0x3fe3d70a  # 1.78f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL  # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_37

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveTopBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTopBtnMarginTop:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveTopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveBottomBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mBottomBtnMarginBottom:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveBottomBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_68

    :cond_37
    iget p1, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatRatio:F

    const v0, 0x3faa3d71  # 1.33f

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_68

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveTopBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTopBtnMarginTop4_3:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveTopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveBottomBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mBottomBtnMarginBottom4_3:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mMoveBottomBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_68
    :goto_68
    return-void
.end method

.method public updateToFullBtnLayout(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)V
    .registers 6

    iget v0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatRatio:F

    const v1, 0x3fe3d70a  # 1.78f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL  # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_29

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mToFullscreenBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->topMargin:I

    iget v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTopBtnMarginTop:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mToFullscreenBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6c

    :cond_29
    iget v0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatRatio:F

    const v1, 0x3faa3d71  # 1.33f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_6c

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mToFullscreenBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_60

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5b

    const-string v1, "updateToFullBtnLayout unexpected orientation "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->orientation:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->logD(Ljava/lang/String;)V

    goto :goto_67

    :cond_5b
    iget p1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTopBtnMarginTop4_3:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_67

    :cond_60
    iget p1, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->topMargin:I

    iget v1, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mTopBtnMarginTop4_3:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_67
    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout;->mToFullscreenBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6c
    :goto_6c
    return-void
.end method
