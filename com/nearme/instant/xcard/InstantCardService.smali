.class public interface abstract Lcom/nearme/instant/xcard/InstantCardService;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FORCE_UPDATE:I = 0x64

.field public static final GET_LOCATION_ASYNC:I = 0x65


# virtual methods
.method public abstract getPermissionDescriptions(Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;Lcom/nearme/instant/xcard/ICardEngineListener;)V
.end method

.method public abstract initOaps(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isSetStatConfig()Z
.end method

.method public abstract isSupport(I)Z
.end method

.method public varargs abstract queryStatus(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardStatusListener;[Ljava/lang/String;)V
.end method

.method public abstract setCardInterceptor(Lcom/nearme/instant/xcard/IInterceptor;)V
.end method

.method public abstract setLaunchInterceptor(Lcom/nearme/instant/xcard/ILaunchInterceptor;)V
.end method

.method public abstract setLaunchInterceptorV1(Lcom/nearme/instant/xcard/ILaunchInterceptorV1;)V
.end method

.method public abstract setLocationAsyncProvider(Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLocationProvider(Lcom/nearme/instant/xcard/provider/HostLocationProvider;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setMaxFontScale(F)V
.end method

.method public abstract setMinFontScale(F)V
.end method

.method public abstract setSdkInitTimeParams(Landroid/os/Bundle;)V
.end method

.method public abstract setStatConfig(Lcom/nearme/instant/xcard/statitics/StatConfig;)V
.end method

.method public abstract setSupportBlurBackground(ZLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract suppressPermissionDialog(Z)V
.end method
