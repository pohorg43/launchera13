.class public abstract Lcom/android/launcher3/card/theme/data/ResultCode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/data/ResultCode$SUCCESS;,
        Lcom/android/launcher3/card/theme/data/ResultCode$InvalidSize;,
        Lcom/android/launcher3/card/theme/data/ResultCode$CardCreatedFail;,
        Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;
    }
.end annotation


# instance fields
.field private final code:I

.field private final reason:Ljava/lang/String;

.field private final targetItemId:I

.field private final targetProviderName:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->targetItemId:I

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->targetProviderName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->reason:Ljava/lang/String;

    iput p4, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->code:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/theme/data/ResultCode;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getCode()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->code:I

    return p0
.end method

.method public final getReason()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetItemId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->targetItemId:I

    return p0
.end method

.method public final getTargetProviderName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->targetProviderName:Ljava/lang/String;

    return-object p0
.end method
