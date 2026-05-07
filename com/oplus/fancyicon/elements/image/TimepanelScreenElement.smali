.class public Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;
.super Lcom/oplus/fancyicon/elements/image/ImageScreenElement;
.source ""

# interfaces
.implements Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TimepanelScreenElement"

.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final NUM_4:I = 0x4

.field private static final NUM_5:I = 0x5

.field public static final TAG_NAME:Ljava/lang/String; = "Time"

.field private static final TIME_ONE_MINUTE:I = 0x3c

.field private static final TIME_SECOND:I = 0x3e8


# instance fields
.field private mBmpHeight:I

.field private mBmpWidth:I

.field public mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatExp:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mLastUpdateTime:J

.field private mLoadResourceFailed:Z

.field private mPreTime:Ljava/lang/CharSequence;

.field private mSpace:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    const-string p2, "kk:mm"

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    const-string p2, "formatExp"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p2, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mFormatExp:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string p2, "space"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mSpace:I

    return-void
.end method

.method private createBitmap()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    const/16 v3, 0xb

    if-ge v0, v3, :cond_4e

    const-string v3, "0123456789:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2d

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mLoadResourceFailed:Z

    const-string p0, "Failed to load digit bitmap: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TimepanelScreenElement"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_37

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :cond_37
    iget v3, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mBmpHeight:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v3, v5, :cond_45

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mBmpHeight:I

    :cond_45
    if-nez v2, :cond_4b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4e
    iget v0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mSpace:I

    int-to-double v3, v0

    invoke-virtual {p0, v3, v4}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v1, v1, 0x5

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mBmpHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget v0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mBmpHeight:I

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->setActualHeight(D)V

    return-void
.end method

.method private getDigitBmp(C)Landroid/graphics/Bitmap;
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "time.png"

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    :goto_15
    const/16 v1, 0x3a

    if-ne p1, v1, :cond_1c

    const-string p1, "dot"

    goto :goto_20

    :cond_1c
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    :goto_20
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getResourceManager()Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    move-result-object p0

    invoke-static {v0, p1}, Lcom/oplus/fancyicon/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getFormat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mFormatExp:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method private setDateFormat()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mFormatExp:Lcom/oplus/fancyicon/data/expression/Expression;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "kk:mm"

    goto :goto_15

    :cond_13
    const-string v0, "hh:mm"

    :goto_15
    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    :cond_17
    return-void
.end method

.method private updateTime()V
    .registers 13

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mLoadResourceFailed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->createBitmap()V

    :cond_c
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mLastUpdateTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a9

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "updateTime preTime = "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", newTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TimepanelScreenElement"

    invoke-static {v4, v3}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    iput-object v2, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v5, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mSpace:I

    int-to-double v7, v5

    invoke-virtual {p0, v7, v8}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v5

    float-to-int v5, v5

    move v7, v6

    :goto_6c
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v6, v8, :cond_92

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-direct {p0, v8}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_8a

    int-to-float v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v7, v5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v8, v7

    move v7, v8

    goto :goto_8f

    :cond_8a
    const-string v8, "updateTime digitBmp = null"

    invoke-static {v4, v8}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8f
    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    :cond_92
    sub-int/2addr v7, v5

    iput v7, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mBmpWidth:I

    int-to-float v2, v7

    invoke-virtual {p0, v2}, Lcom/oplus/fancyicon/elements/ScreenElement;->descale(F)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/oplus/fancyicon/elements/ScreenElement;->setActualWidth(D)V

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mLastUpdateTime:J

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    :cond_a9
    return-void
.end method


# virtual methods
.method public getBitmapWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mBmpWidth:I

    return p0
.end method

.method public getNotifierManager()Lcom/oplus/fancyicon/NotifierManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/fancyicon/NotifierManager;->getInstance(Landroid/content/Context;)Lcom/oplus/fancyicon/NotifierManager;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->init()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mLastUpdateTime:J

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->getNotifierManager()Lcom/oplus/fancyicon/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/NotifierManager;->acquireNotifier(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->getNotifierManager()Lcom/oplus/fancyicon/NotifierManager;

    move-result-object p0

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/NotifierManager;->acquireNotifier(Ljava/lang/String;)V

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->updateTime()V

    return-void
.end method

.method public onRenderThreadStoped()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mLoadResourceFailed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mLastUpdateTime:J

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->getNotifierManager()Lcom/oplus/fancyicon/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/NotifierManager;->releaseNotifier(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->getNotifierManager()Lcom/oplus/fancyicon/NotifierManager;

    move-result-object p0

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/NotifierManager;->releaseNotifier(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->pause()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->getNotifierManager()Lcom/oplus/fancyicon/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/fancyicon/NotifierManager;->pause(Ljava/lang/String;Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->getNotifierManager()Lcom/oplus/fancyicon/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/fancyicon/NotifierManager;->pause(Ljava/lang/String;Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public resume()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->resume()V

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->setDateFormat()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->getNotifierManager()Lcom/oplus/fancyicon/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/fancyicon/NotifierManager;->resume(Ljava/lang/String;Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->getNotifierManager()Lcom/oplus/fancyicon/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/fancyicon/NotifierManager;->resume(Ljava/lang/String;Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;->updateTime()V

    return-void
.end method
