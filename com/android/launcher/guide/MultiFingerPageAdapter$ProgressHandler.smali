.class Lcom/android/launcher/guide/MultiFingerPageAdapter$ProgressHandler;
.super Lcom/android/common/util/StaticHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/MultiFingerPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/common/util/StaticHandler<",
        "Lcom/android/launcher/guide/MultiFingerPageAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/MultiFingerPageAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/util/StaticHandler;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;Lcom/android/launcher/guide/MultiFingerPageAdapter;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/common/util/StaticHandler;->handleMessage(Landroid/os/Message;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->access$000(Lcom/android/launcher/guide/MultiFingerPageAdapter;)V

    return-void
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/android/launcher/guide/MultiFingerPageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/guide/MultiFingerPageAdapter$ProgressHandler;->handleMessage(Landroid/os/Message;Lcom/android/launcher/guide/MultiFingerPageAdapter;)V

    return-void
.end method
