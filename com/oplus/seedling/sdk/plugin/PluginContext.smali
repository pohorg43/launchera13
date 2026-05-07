.class public final Lcom/oplus/seedling/sdk/plugin/PluginContext;
.super Landroid/view/ContextThemeWrapper;
.source ""


# instance fields
.field private final mHostContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object p3, p0, Lcom/oplus/seedling/sdk/plugin/PluginContext;->mHostContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginContext;->mHostContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "mHostContext.applicationContext"

    goto :goto_11

    :cond_b
    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "super.getApplicationContext()"

    :goto_11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
