.class final Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectStaticLayout$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/text/StaticLayout;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectStaticLayout$2;->this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/text/StaticLayout;
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectStaticLayout$2;->this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    invoke-static {v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->access$getMContext$p$s-359386749(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectStaticLayout$2;->this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    invoke-static {v2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->access$getMContext$p$s-359386749(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectStaticLayout$2;->this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    invoke-static {v2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->access$getMContentProtectTextPaint(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Landroid/text/TextPaint;

    move-result-object v2

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectStaticLayout$2;->this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f07097d

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, p0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_42

    :cond_40
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_42
    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectStaticLayout$2;->invoke()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method
