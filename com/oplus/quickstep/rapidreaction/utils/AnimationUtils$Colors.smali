.class public final Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Colors;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Colors"
.end annotation


# static fields
.field public static final BG_NORMAL:I = 0x33ffffff

.field public static final BG_SELECTED:I = 0x66ffffff

.field public static final BG_STROKE_NORMAL:I = 0x33ffffff

.field public static final BG_STROKE_SELECTED:I = -0x1

.field public static final ICON_NORMAL:I = -0x4c000001

.field public static final ICON_SELECTED:I = -0x26000001

.field public static final INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Colors;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Colors;

    invoke-direct {v0}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Colors;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Colors;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Colors;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
