.class public final Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$THRESHOLD;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "THRESHOLD"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$THRESHOLD;

.field public static final LANDSCAPE_SELECT_FRACTION:F = 0.85f

.field public static final LANDSCAPE_SWIPE_END_FRACTION:F = 0.95f

.field public static final LANDSCAPE_SWIPE_START_FRACTION:F = 0.6f

.field public static final PORTRAIT_SELECT_FRACTION:F = 1.15f

.field public static final PORTRAIT_SWIPE_END_FRACTION:F = 1.2f

.field public static final PORTRAIT_SWIPE_START_FRACTION:F = 0.95f

.field public static final TRIGGER_PANEL_SELECT_DELAY:J = 0x96L


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$THRESHOLD;

    invoke-direct {v0}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$THRESHOLD;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$THRESHOLD;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$THRESHOLD;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
