.class public Lcom/coui/responsiveui/config/ResponsiveUIConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/responsiveui/config/ResponsiveUIConfig$LifecycleCallbacks;
    }
.end annotation


# static fields
.field public static j:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

.field public static k:Z

.field public static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/coui/responsiveui/config/ResponsiveUIConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/coui/responsiveui/config/UIConfig;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/coui/responsiveui/config/UIConfig$Status;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/coui/responsiveui/config/UIScreenSize;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Landroid/content/Context;

.field public i:Lcom/coui/responsiveui/config/UIConfig$WindowType;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->l:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a:I

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->f:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;->SMALL:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    invoke-virtual {p0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/coui/responsiveui/config/ResponsiveUIConfig;
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->j:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    if-nez v0, :cond_b

    new-instance v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    invoke-direct {v0, p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->j:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget-object v1, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->j:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    iget v1, v1, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a:I

    if-eq v0, v1, :cond_38

    const-string v1, "getDefault context hash change from "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->j:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    iget v2, v2, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResponsiveUIConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->j:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    invoke-virtual {v0, p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->d(Landroid/content/Context;)V

    :cond_38
    sget-object p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->j:Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    return-object p0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/coui/responsiveui/config/ResponsiveUIConfig;
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-boolean v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->k:Z

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/coui/responsiveui/config/ResponsiveUIConfig$LifecycleCallbacks;

    invoke-direct {v1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig$LifecycleCallbacks;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->k:Z

    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget-object v1, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ResponsiveUIConfig"

    if-eqz v1, :cond_50

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newInstance return the kept instance "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    return-object p0

    :cond_50
    new-instance v1, Lcom/coui/responsiveui/config/ResponsiveUIConfig;

    invoke-direct {v1, p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newInstance return the new instance "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", size "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public final a(I)I
    .registers 6

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$integer;->inner_responsive_ui_column_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$integer;->inner_responsive_ui_column_8:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/support/appcompat/R$integer;->inner_responsive_ui_column_12:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    div-int/lit8 v2, v0, 0x2

    sub-int v3, v1, v2

    if-ge p1, v3, :cond_2b

    goto :goto_35

    :cond_2b
    if-ge p1, v1, :cond_2e

    goto :goto_32

    :cond_2e
    sub-int v0, p0, v2

    if-ge p1, v0, :cond_34

    :goto_32
    move v0, v1

    goto :goto_35

    :cond_34
    move v0, p0

    :goto_35
    return v0
.end method

.method public final b(Landroid/content/res/Resources;)V
    .registers 6

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget v1, Lcom/support/appcompat/R$integer;->responsive_ui_column_count:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iget-object v1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v1}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result v1

    iget-object v2, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_30

    move v1, v2

    :cond_30
    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a(I)I

    move-result p1

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_48

    :cond_3f
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_48
    return-void
.end method

.method public final c(ILcom/coui/responsiveui/config/UIScreenSize;)Lcom/coui/responsiveui/config/UIConfig$Status;
    .registers 7

    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->UNKNOWN:Lcom/coui/responsiveui/config/UIConfig$Status;

    invoke-virtual {p2}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result v1

    invoke-virtual {p2}, Lcom/coui/responsiveui/config/UIScreenSize;->getHeightDp()I

    move-result p2

    const/16 v2, 0x258

    if-ge v1, v2, :cond_13

    sget-object v3, Lcom/coui/responsiveui/config/UIConfig$WindowType;->SMALL:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    iput-object v3, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    goto :goto_20

    :cond_13
    const/16 v3, 0x348

    if-ge v1, v3, :cond_1c

    sget-object v3, Lcom/coui/responsiveui/config/UIConfig$WindowType;->MEDIUM:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    iput-object v3, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    goto :goto_20

    :cond_1c
    sget-object v3, Lcom/coui/responsiveui/config/UIConfig$WindowType;->LARGE:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    iput-object v3, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    :goto_20
    const/4 p0, 0x1

    if-eq p1, p0, :cond_39

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2f

    const-string p0, "ResponsiveUIConfig"

    const-string/jumbo p1, "undefined orientation Status unknown !!! "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :cond_2f
    const/16 p0, 0x1f4

    if-lt p2, p0, :cond_36

    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->UNFOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    goto :goto_40

    :cond_36
    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->FOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    goto :goto_40

    :cond_39
    if-lt v1, v2, :cond_3e

    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->UNFOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    goto :goto_40

    :cond_3e
    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->FOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    :goto_40
    return-object v0
.end method

.method public final d(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$integer;->inner_responsive_ui_column_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e(Landroid/content/res/Configuration;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b(Landroid/content/res/Resources;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init uiConfig "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", columns count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResponsiveUIConfig"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init addContent ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentWidthDp()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyChildWidthDp()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentColumnsCount()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyChildColumnsCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final e(Landroid/content/res/Configuration;)Z
    .registers 8

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    new-instance v1, Lcom/coui/responsiveui/config/UIScreenSize;

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {v1, v2, v3, p1}, Lcom/coui/responsiveui/config/UIScreenSize;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->c(ILcom/coui/responsiveui/config/UIScreenSize;)Lcom/coui/responsiveui/config/UIConfig$Status;

    move-result-object p1

    new-instance v2, Lcom/coui/responsiveui/config/UIConfig;

    iget-object v3, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    invoke-direct {v2, p1, v1, v0, v3}, Lcom/coui/responsiveui/config/UIConfig;-><init>(Lcom/coui/responsiveui/config/UIConfig$Status;Lcom/coui/responsiveui/config/UIScreenSize;ILcom/coui/responsiveui/config/UIConfig$WindowType;)V

    iget-object p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/responsiveui/config/UIConfig;

    invoke-virtual {v2, p1}, Lcom/coui/responsiveui/config/UIConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_101

    if-eqz p1, :cond_33

    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getStatus()Lcom/coui/responsiveui/config/UIConfig$Status;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/responsiveui/config/UIConfig;->getStatus()Lcom/coui/responsiveui/config/UIConfig$Status;

    move-result-object v3

    if-eq v0, v3, :cond_3c

    :cond_33
    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getStatus()Lcom/coui/responsiveui/config/UIConfig$Status;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_3c
    const/4 v0, 0x1

    if-eqz p1, :cond_49

    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getOrientation()I

    move-result v3

    invoke-virtual {p1}, Lcom/coui/responsiveui/config/UIConfig;->getOrientation()I

    move-result v4

    if-eq v3, v4, :cond_57

    :cond_49
    iget-object v1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getOrientation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    move v1, v0

    :cond_57
    if-eqz p1, :cond_67

    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getScreenSize()Lcom/coui/responsiveui/config/UIScreenSize;

    move-result-object v3

    invoke-virtual {p1}, Lcom/coui/responsiveui/config/UIConfig;->getScreenSize()Lcom/coui/responsiveui/config/UIScreenSize;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/coui/responsiveui/config/UIScreenSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fb

    :cond_67
    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getScreenSize()Lcom/coui/responsiveui/config/UIScreenSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result p1

    iget-object v3, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int v4, p1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_8f

    iget-object p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getScreenSize()Lcom/coui/responsiveui/config/UIScreenSize;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_f1

    :cond_8f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update ScreenSize few case newWidth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " appWidth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ResponsiveUIConfig"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/responsiveui/config/UIScreenSize;

    if-eqz v3, :cond_c3

    if-eqz v1, :cond_bf

    invoke-virtual {v3}, Lcom/coui/responsiveui/config/UIScreenSize;->getHeightDp()I

    move-result p1

    goto :goto_c3

    :cond_bf
    invoke-virtual {v3}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result p1

    :cond_c3
    :goto_c3
    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getScreenSize()Lcom/coui/responsiveui/config/UIScreenSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/responsiveui/config/UIScreenSize;->getHeightDp()I

    move-result v1

    new-instance v3, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v2}, Lcom/coui/responsiveui/config/UIConfig;->getScreenSize()Lcom/coui/responsiveui/config/UIScreenSize;

    move-result-object v4

    iget v4, v4, Lcom/coui/responsiveui/config/UIScreenSize;->c:I

    invoke-direct {v3, p1, v1, v4}, Lcom/coui/responsiveui/config/UIScreenSize;-><init>(III)V

    iget-object p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->c(ILcom/coui/responsiveui/config/UIScreenSize;)Lcom/coui/responsiveui/config/UIConfig$Status;

    move-result-object p1

    iput-object p1, v2, Lcom/coui/responsiveui/config/UIConfig;->a:Lcom/coui/responsiveui/config/UIConfig$Status;

    iget-object p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->i:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    iput-object p1, v2, Lcom/coui/responsiveui/config/UIConfig;->d:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    :goto_f1
    iget-object p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/responsiveui/config/UIScreenSize;

    iput-object p1, v2, Lcom/coui/responsiveui/config/UIConfig;->c:Lcom/coui/responsiveui/config/UIScreenSize;

    :cond_fb
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return v0

    :cond_101
    return v1
.end method

.method public flush(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->d(Landroid/content/Context;)V

    return-void
.end method

.method public getExtendHierarchyChildColumnsCount()I
    .registers 2

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentColumnsCount()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getExtendHierarchyChildWidthDp()I
    .registers 2

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v0}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentWidthDp()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getExtendHierarchyParentColumnsCount()I
    .registers 3

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentWidthDp()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v1}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p0, v0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->a(I)I

    move-result p0

    return p0
.end method

.method public getExtendHierarchyParentWidthDp()I
    .registers 3

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v0}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result v0

    const/16 v1, 0x348

    if-lt v0, v1, :cond_1d

    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$integer;->inner_responsive_ui_extend_hierarchy_parent_width_360:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    :cond_1d
    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v0}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_3a

    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$integer;->inner_responsive_ui_extend_hierarchy_parent_width_300:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    :cond_3a
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result p0

    return p0
.end method

.method public getScreenType()Lcom/coui/responsiveui/config/UIConfig$WindowType;
    .registers 1

    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/responsiveui/config/UIConfig;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/UIConfig;->getWindowType()Lcom/coui/responsiveui/config/UIConfig$WindowType;

    move-result-object p0

    return-object p0
.end method

.method public getUiColumnsCount()Landroidx/lifecycle/LiveData;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->f:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getUiConfig()Landroidx/lifecycle/LiveData;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/coui/responsiveui/config/UIConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getUiOrientation()Landroidx/lifecycle/LiveData;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->d:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getUiScreenSize()Landroidx/lifecycle/LiveData;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/coui/responsiveui/config/UIScreenSize;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getUiStatus()Landroidx/lifecycle/LiveData;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/coui/responsiveui/config/UIConfig$Status;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->c:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public onActivityConfigChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_78

    iget-object p1, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b(Landroid/content/res/Resources;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUIConfigChanged uiConfig "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", columns count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResponsiveUIConfig"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUIConfigChanged addContent ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentWidthDp()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyChildWidthDp()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyParentColumnsCount()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getExtendHierarchyChildColumnsCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    return-void
.end method

.method public spanCountBaseColumns(I)I
    .registers 3

    iget v0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->g:I

    invoke-virtual {p0, v0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->spanCountBaseColumns(II)I

    move-result p0

    return p0
.end method

.method public spanCountBaseColumns(II)I
    .registers 3

    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    div-int/2addr p0, p1

    const/4 p1, 0x1

    if-ge p2, p1, :cond_11

    move p2, p1

    :cond_11
    mul-int/2addr p0, p2

    return p0
.end method

.method public spanCountBaseWidth(I)I
    .registers 3

    const/16 v0, 0x168

    invoke-virtual {p0, v0, p1}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->spanCountBaseWidth(II)I

    move-result p0

    return p0
.end method

.method public spanCountBaseWidth(II)I
    .registers 5

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->getUiScreenSize()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v0}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result v0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_15

    if-ge p1, v1, :cond_15

    return p2

    :cond_15
    iget-object p0, p0, Lcom/coui/responsiveui/config/ResponsiveUIConfig;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {p0}, Lcom/coui/responsiveui/config/UIScreenSize;->getWidthDp()I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/4 p1, 0x1

    if-ge p2, p1, :cond_28

    move p2, p1

    :cond_28
    int-to-float p1, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method
