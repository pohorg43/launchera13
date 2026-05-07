.class public Lcom/android/wm/shell/WMShellBooster;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "WMShellBooster"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUx(ZI)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const/16 p0, 0x82

    goto :goto_7

    :cond_6
    move p0, v0

    :goto_7
    sget-object v1, Lcom/oplus/uifirst/IOplusUIFirstManager;->DEFAULT:Lcom/oplus/uifirst/IOplusUIFirstManager;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oplus/uifirst/IOplusUIFirstManager;

    const/4 v3, 0x6

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "com.android.systemui"

    const-string v7, "0"

    move v4, p1

    move v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/oplus/uifirst/IOplusUIFirstManager;->setTaskAnimation(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
