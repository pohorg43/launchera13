.class Lcom/android/launcher/custom/CustomizeRestrictionManager$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/custom/CustomizeRestrictionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOplusDevicePolicyUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onOplusDevicePolicyUpdate(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "CustomizeRestrictionManager"

    const-string p1, "disallow uninstall packages updated"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->access$402(Ljava/util/List;)Ljava/util/List;

    return-void
.end method
