.class final Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$defaultBitmap$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$defaultBitmap$2;->this$0:Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Bitmap;
    .registers 4

    iget-object p0, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$defaultBitmap$2;->this$0:Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;

    invoke-static {p0}, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->access$getAppContext$p(Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0806e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "appContext.resources.get….drawable.lightning_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->access$drawableToBitmap(Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "initialize default lightning bitmap = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusLightningSourceLoader"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$defaultBitmap$2;->invoke()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
