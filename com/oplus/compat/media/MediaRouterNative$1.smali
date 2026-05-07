.class Lcom/oplus/compat/media/MediaRouterNative$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/Call$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/media/MediaRouterNative;->addCallback(Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callbackNative:Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/media/MediaRouterNative$1;->val$callbackNative:Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/oplus/epona/Response;)V
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-virtual {p1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    const-string v0, "call_back_action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    :cond_1a
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_c0

    goto :goto_67

    :sswitch_26
    const-string v2, "onRouteSelected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_67

    :cond_2f
    const/4 v1, 0x5

    goto :goto_67

    :sswitch_31
    const-string v2, "onRouteVolumeChanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_67

    :cond_3a
    const/4 v1, 0x4

    goto :goto_67

    :sswitch_3c
    const-string v2, "onRouteAdded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_67

    :cond_45
    const/4 v1, 0x3

    goto :goto_67

    :sswitch_47
    const-string v2, "onRouteUnselected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_67

    :cond_50
    const/4 v1, 0x2

    goto :goto_67

    :sswitch_52
    const-string v2, "onRouteRemoved"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_67

    :cond_5b
    const/4 v1, 0x1

    goto :goto_67

    :sswitch_5d
    const-string v2, "onRouteChanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_67

    :cond_66
    const/4 v1, 0x0

    :goto_67
    const-string v0, "call_back_type"

    const-string v2, "call_back_route_info"

    packed-switch v1, :pswitch_data_da

    goto :goto_be

    :pswitch_6f  #0x5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/oplus/compat/media/MediaRouterInfo;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterNative$1;->val$callbackNative:Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;

    invoke-interface {p0, p1, v1}, Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;->onRouteSelected(ILcom/oplus/compat/media/MediaRouterInfo;)V

    goto :goto_be

    :pswitch_7f  #0x4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oplus/compat/media/MediaRouterInfo;

    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterNative$1;->val$callbackNative:Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;

    invoke-interface {p0, p1}, Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;->onRouteVolumeChanged(Lcom/oplus/compat/media/MediaRouterInfo;)V

    goto :goto_be

    :pswitch_8b  #0x3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oplus/compat/media/MediaRouterInfo;

    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterNative$1;->val$callbackNative:Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;

    invoke-interface {p0, p1}, Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;->onRouteAdded(Lcom/oplus/compat/media/MediaRouterInfo;)V

    goto :goto_be

    :pswitch_97  #0x2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/oplus/compat/media/MediaRouterInfo;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterNative$1;->val$callbackNative:Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;

    invoke-interface {p0, p1, v1}, Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;->onRouteUnselected(ILcom/oplus/compat/media/MediaRouterInfo;)V

    goto :goto_be

    :pswitch_a7  #0x1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oplus/compat/media/MediaRouterInfo;

    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterNative$1;->val$callbackNative:Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;

    invoke-interface {p0, p1}, Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;->onRouteRemoved(Lcom/oplus/compat/media/MediaRouterInfo;)V

    goto :goto_be

    :pswitch_b3  #0x0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oplus/compat/media/MediaRouterInfo;

    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterNative$1;->val$callbackNative:Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;

    invoke-interface {p0, p1}, Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;->onRouteChanged(Lcom/oplus/compat/media/MediaRouterInfo;)V

    :cond_be
    :goto_be
    return-void

    nop

    :sswitch_data_c0
    .sparse-switch
        -0x2ecaa056 -> :sswitch_5d
        -0x19c1eaaa -> :sswitch_52
        -0xccd5082 -> :sswitch_47
        -0x4295c8a -> :sswitch_3c
        0x42afaeb0 -> :sswitch_31
        0x471b9465 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_b3  #00000000
        :pswitch_a7  #00000001
        :pswitch_97  #00000002
        :pswitch_8b  #00000003
        :pswitch_7f  #00000004
        :pswitch_6f  #00000005
    .end packed-switch
.end method
