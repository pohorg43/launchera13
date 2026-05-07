.class final Lcom/android/launcher/layout/ComponentLayoutProvider$CarrierLayoutProvider$layoutDirectory$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/layout/ComponentLayoutProvider$CarrierLayoutProvider;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/layout/ComponentLayoutProvider$CarrierLayoutProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher/layout/ComponentLayoutProvider$CarrierLayoutProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/layout/ComponentLayoutProvider$CarrierLayoutProvider$layoutDirectory$2;->this$0:Lcom/android/launcher/layout/ComponentLayoutProvider$CarrierLayoutProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/File;
    .registers 2

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isCotaLoaded()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    goto :goto_12

    :cond_8
    iget-object p0, p0, Lcom/android/launcher/layout/ComponentLayoutProvider$CarrierLayoutProvider$layoutDirectory$2;->this$0:Lcom/android/launcher/layout/ComponentLayoutProvider$CarrierLayoutProvider;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/layout/ComponentLayoutProvider;->etcDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    :goto_12
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/layout/ComponentLayoutProvider$CarrierLayoutProvider$layoutDirectory$2;->invoke()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
