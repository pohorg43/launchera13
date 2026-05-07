.class Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/animation/FlingAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatorProperties"
.end annotation


# instance fields
.field public mDuration:J

.field public mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/animation/FlingAnimationUtils$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;-><init>()V

    return-void
.end method
