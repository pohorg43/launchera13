.class public final synthetic Lcom/android/launcher3/graphics/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;

.field public final synthetic b:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/g;->a:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;

    iput-object p2, p0, Lcom/android/launcher3/graphics/g;->b:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/graphics/g;->a:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;

    iget-object p0, p0, Lcom/android/launcher3/graphics/g;->b:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-static {v0, p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->c(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V

    return-void
.end method
