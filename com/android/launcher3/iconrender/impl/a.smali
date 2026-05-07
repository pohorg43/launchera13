.class public final synthetic Lcom/android/launcher3/iconrender/impl/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/span/TextCrossFadeSpan$IAnimationListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;

.field public final synthetic b:Lcom/android/launcher3/BubbleTextView;

.field public final synthetic c:Lcom/android/launcher3/iconrender/RenderManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/a;->a:Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/a;->b:Lcom/android/launcher3/BubbleTextView;

    iput-object p3, p0, Lcom/android/launcher3/iconrender/impl/a;->c:Lcom/android/launcher3/iconrender/RenderManager;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(Ljava/lang/CharSequence;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/a;->a:Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/a;->b:Lcom/android/launcher3/BubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/a;->c:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->a(Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/RenderManager;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
