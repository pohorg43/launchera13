.class final Lcom/android/common/util/AppFeatureUtils$lazyIntFeature$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/AppFeatureUtils;->lazyIntFeature(Ljava/lang/String;I)Ly2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $defaultValue:I

.field public final synthetic $featureName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/common/util/AppFeatureUtils$lazyIntFeature$1;->$featureName:Ljava/lang/String;

    iput p2, p0, Lcom/android/common/util/AppFeatureUtils$lazyIntFeature$1;->$defaultValue:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {v0}, Lcom/android/common/util/AppFeatureUtils;->access$getContentResolver(Lcom/android/common/util/AppFeatureUtils;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/util/AppFeatureUtils$lazyIntFeature$1;->$featureName:Ljava/lang/String;

    iget p0, p0, Lcom/android/common/util/AppFeatureUtils$lazyIntFeature$1;->$defaultValue:I

    invoke-static {v0, v1, p0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils$lazyIntFeature$1;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
