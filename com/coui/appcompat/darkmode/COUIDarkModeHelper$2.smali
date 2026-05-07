.class Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$2;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$2;->b:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    iput-object p3, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$2;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$2;->b:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    iget-object v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DarkMode_BackgroundMaxL"

    const/high16 v2, -0x40800000  # -1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->a:F

    iget-object p0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$2;->b:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    iget-object p1, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->b:Ljava/util/List;

    if-eqz p1, :cond_38

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_22

    goto :goto_38

    :cond_22
    iget-object p0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$ICOUIDarkColorObserver;

    invoke-interface {p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$ICOUIDarkColorObserver;->onBackgroundChange()V

    goto :goto_28

    :cond_38
    :goto_38
    return-void
.end method
