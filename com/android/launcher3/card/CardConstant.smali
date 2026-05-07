.class public final Lcom/android/launcher3/card/CardConstant;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CARD_ID:Ljava/lang/String; = "cardId"

.field public static final CARD_RESIZE_FOR_2_COL:Z = false

.field public static final CARD_TYPE:Ljava/lang/String; = "cardType"

.field public static final DRAG_TO_LAUNCHER:Ljava/lang/String; = "drag_to_launcher"

.field public static final HOST_ID:Ljava/lang/String; = "hostId"

.field public static final HOST_ID_LAUNCHER:I = 0x1

.field public static final INSTANCE:Lcom/android/launcher3/card/CardConstant;

.field public static final SPAN_FOUR:I = 0x4

.field public static final SPAN_ONE:I = 0x1

.field public static final SPAN_TWO:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/CardConstant;

    invoke-direct {v0}, Lcom/android/launcher3/card/CardConstant;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/CardConstant;->INSTANCE:Lcom/android/launcher3/card/CardConstant;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final logCardTag(III)Ljava/lang/String;
    .registers 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[DEBUG_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x26

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "], "

    invoke-static {p0, p3, p1}, Landroid/support/v4/media/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
