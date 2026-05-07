.class Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureCacheHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/coreapp/appfeature/AppFeatureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppFeatureCacheHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/coreapp/appfeature/AppFeatureCache;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;

    invoke-direct {v0}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;-><init>()V

    sput-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureCacheHolder;->INSTANCE:Lcom/oplus/coreapp/appfeature/AppFeatureCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
