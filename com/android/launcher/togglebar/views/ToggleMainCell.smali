.class public Lcom/android/launcher/togglebar/views/ToggleMainCell;
.super Lcom/android/launcher/views/AdaptiveScreenRotateRelativeLayout;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ToggleMainCell"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/togglebar/views/ToggleMainCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/views/AdaptiveScreenRotateRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-boolean p1, Lcom/android/common/debug/LogUtils;->drawBackground:Z

    if-eqz p1, :cond_d

    const p1, 0x7f08052e

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_d
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/android/launcher/views/AdaptiveScreenRotateRelativeLayout;->onLayout(ZIIII)V

    return-void
.end method
