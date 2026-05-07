.class Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/FramerateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryFrameRate"
.end annotation


# instance fields
.field private mCurCategory:Ljava/lang/String;

.field private mCurrentFramerate:F

.field private mFrameRateBatteryFull:F

.field private mFrameRateBatteryLow:F

.field private mFrameRateCharging:F

.field private final mFramerateToken:Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

.field private mNormalFrameRate:F

.field public final synthetic this$0:Lcom/oplus/fancyicon/FramerateManager;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/FramerateManager;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->this$0:Lcom/oplus/fancyicon/FramerateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mNormalFrameRate:F

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/fancyicon/FramerateManager;->createFramerateToken(Ljava/lang/String;)Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mFramerateToken:Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    return-void
.end method


# virtual methods
.method public loadFrameRate(Lorg/w3c/dom/Element;)V
    .registers 4

    const-string v0, "frameRate"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mNormalFrameRate:F

    const-string v1, "frameRateCharging"

    invoke-static {p1, v1, v0}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mFrameRateCharging:F

    iget v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mNormalFrameRate:F

    const-string v1, "frameRateBatteryLow"

    invoke-static {p1, v1, v0}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mFrameRateBatteryLow:F

    iget v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mNormalFrameRate:F

    const-string v1, "frameRateBatteryFull"

    invoke-static {p1, v1, v0}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mFrameRateBatteryFull:F

    return-void
.end method

.method public needChangeCategory(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "BatteryFull"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mFrameRateBatteryFull:F

    iput v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mCurrentFramerate:F

    goto :goto_33

    :cond_d
    const-string v0, "Charging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mFrameRateCharging:F

    iput v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mCurrentFramerate:F

    goto :goto_33

    :cond_1a
    const-string v0, "BatteryLow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mFrameRateBatteryLow:F

    iput v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mCurrentFramerate:F

    goto :goto_33

    :cond_27
    const-string v0, "Normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mNormalFrameRate:F

    iput v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mCurrentFramerate:F

    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mCurCategory:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    iput-object p1, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mCurCategory:Ljava/lang/String;

    iget-object p1, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mFramerateToken:Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    iget p0, p0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->mCurrentFramerate:F

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;->updateFramerate(F)V

    const/4 p0, 0x1

    return p0

    :cond_46
    const/4 p0, 0x0

    return p0
.end method
