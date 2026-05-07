.class public Lmirror/android/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmirror/android/app/SystemServiceRegistry$CachedServiceFetcher;,
        Lmirror/android/app/SystemServiceRegistry$StaticServiceFetcher;,
        Lmirror/android/app/SystemServiceRegistry$RefInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFetcher(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lmirror/android/app/SystemServiceRegistry$RefInfo;->SYSTEM_SERVICE_FETCHERS:Lcom/oplus/utils/reflect/RefObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
