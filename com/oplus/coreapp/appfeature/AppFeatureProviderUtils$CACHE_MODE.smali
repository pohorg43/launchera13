.class public final enum Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CACHE_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

.field public static final enum CACHE_AND_DB:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

.field public static final enum CACHE_ONLY:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    const-string v1, "CACHE_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;->CACHE_ONLY:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    new-instance v1, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    const-string v3, "CACHE_AND_DB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;->CACHE_AND_DB:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;->$VALUES:[Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;
    .registers 2

    const-class v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    return-object p0
.end method

.method public static values()[Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;
    .registers 1

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;->$VALUES:[Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    invoke-virtual {v0}, [Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    return-object v0
.end method
