.class public final Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$AnimationValue;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationValue"
.end annotation


# static fields
.field public static final ALPHA_ENTER_END_FRACTION:F = 1.0f

.field public static final ALPHA_ENTER_START_FRACTION:F = 0.0f

.field public static final ALPHA_HINT_VIEW_TRANSITION_END_FRACTION:F = 1.0f

.field public static final ALPHA_HINT_VIEW_TRANSITION_START_FRACTION:F = 0.0f

.field public static final ALPHA_SELECT_END_FRACTION:F = 0.5f

.field public static final ALPHA_SELECT_START_FRACTION:F = 1.0f

.field public static final ALPHA_TO_TITLE_DURATION:J = 0xa7L

.field public static final INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$AnimationValue;

.field public static final MAX_ALPHA:I = 0xff

.field public static final NORMAL_ANIM_DURATION:J = 0x1a4L

.field public static final SCALE_ENTER_END_FRACTION:F = 1.0f

.field public static final SCALE_ENTER_START_FRACTION:F = 0.85f

.field public static final SCROLL_DISTANCE_PERCENT_STEP_1:F = 0.15f

.field public static final SCROLL_DURATION_PERCENT_STEP_1:F = 0.375f

.field public static final TRIGGER_VIEW_MAX_SCALE:F = 1.4f


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$AnimationValue;

    invoke-direct {v0}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$AnimationValue;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$AnimationValue;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$AnimationValue;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
