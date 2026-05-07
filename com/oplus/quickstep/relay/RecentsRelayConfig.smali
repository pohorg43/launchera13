.class public final Lcom/oplus/quickstep/relay/RecentsRelayConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ENABLE:Z = true

.field public static final INSTANCE:Lcom/oplus/quickstep/relay/RecentsRelayConfig;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/relay/RecentsRelayConfig;

    invoke-direct {v0}, Lcom/oplus/quickstep/relay/RecentsRelayConfig;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/relay/RecentsRelayConfig;->INSTANCE:Lcom/oplus/quickstep/relay/RecentsRelayConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAvailableCalling(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/oplus/quickstep/relay/RecentsRelayConfig;->INSTANCE:Lcom/oplus/quickstep/relay/RecentsRelayConfig;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportRecentExpendDevice()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/relay/RecentsRelayConfig;->valid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-direct {v0, p1}, Lcom/oplus/quickstep/relay/RecentsRelayConfig;->valid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private final valid(Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_c

    move p1, p0

    goto :goto_d

    :cond_c
    move p1, v0

    :goto_d
    if-eqz p1, :cond_10

    goto :goto_11

    :cond_10
    move p0, v0

    :goto_11
    return p0
.end method


# virtual methods
.method public final isEnabled()Z
    .registers 1

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportRecentExpendDevice()Z

    move-result p0

    return p0
.end method
