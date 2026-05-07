.class interface abstract Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AnimatorPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressMapper"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/e;->a:Lcom/android/launcher3/anim/e;

    sput-object v0, Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;->DEFAULT:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;

    return-void
.end method

.method public static synthetic a(FF)F
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;->lambda$static$0(FF)F

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0(FF)F
    .registers 3

    cmpl-float v0, p0, p1

    if-lez v0, :cond_7

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_8

    :cond_7
    div-float/2addr p0, p1

    :goto_8
    return p0
.end method


# virtual methods
.method public abstract getProgress(FF)F
.end method
