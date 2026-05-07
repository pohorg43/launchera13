.class public Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;
.super Lcom/oplus/fancyicon/elements/text/TextScreenElement;
.source ""


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DateTimeScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "DateTime"

.field private static final UPDATE_INTERVAL:I = 0xc8


# instance fields
.field public mCalendar:Ljava/util/Calendar;

.field private mCurDay:I

.field private mCurMonth:I

.field private mCurYear:I

.field private mLastLunarDate:Ljava/lang/String;

.field private mLunarDate:Ljava/lang/String;

.field private mPreValue:J

.field private mText:Ljava/lang/String;

.field private mValue:Lcom/oplus/fancyicon/data/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    const/4 p2, -0x1

    iput p2, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCurDay:I

    iput p2, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCurMonth:I

    iput p2, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCurYear:I

    const-string p2, ""

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mLastLunarDate:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    const-string p2, "value"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p1, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mValue:Lcom/oplus/fancyicon/data/expression/Expression;

    return-void
.end method

.method public static isSimpleLocal(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p0, :cond_2a

    const-string v0, "LK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "RU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p0, 0x1

    :goto_26
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 14

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mValue:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->evaluate(Lcom/oplus/fancyicon/data/expression/Expression;)D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_e

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_e
    iget-wide v2, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mPreValue:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1f

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mText:Ljava/lang/String;

    return-object p0

    :cond_1f
    iget-object v2, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->getFormat()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2c

    const/4 p0, 0x0

    return-object p0

    :cond_2c
    const-string v3, "NNNN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_f9

    invoke-static {}, Lcom/oplus/fancyicon/util/FeatureOption;->isChinese()Z

    move-result v4

    if-eqz v4, :cond_f2

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget v8, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCurDay:I

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ne v4, v8, :cond_5d

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget v8, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCurMonth:I

    if-ne v4, v8, :cond_5d

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget v8, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCurYear:I

    if-eq v4, v8, :cond_f2

    :cond_5d
    iget-object v4, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v4}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v4

    const-string v8, "month_lunar"

    invoke-static {v8, v4}, Lcom/oplus/fancyicon/util/Utils;->getVariableString(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v8}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v8

    const-string v11, "date_lunar"

    invoke-static {v11, v8}, Lcom/oplus/fancyicon/util/Utils;->getVariableString(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v11}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v11

    const-string v12, "lunar_solar_term"

    invoke-static {v12, v11}, Lcom/oplus/fancyicon/util/Utils;->getVariableString(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b1

    invoke-static {v4, v8}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    :cond_b1
    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mLastLunarDate:Ljava/lang/String;

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_da

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCurDay:I

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCurMonth:I

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCurYear:I

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    iput-object v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mLastLunarDate:Ljava/lang/String;

    iput-wide v5, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mPreValue:J

    goto :goto_de

    :cond_da
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mPreValue:J

    :goto_de
    const-string v4, "get lunar date:"

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "DateTimeScreenElement"

    invoke-static {v7, v4}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f2
    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_11b

    :cond_f9
    invoke-static {}, Lcom/oplus/fancyicon/util/FeatureOption;->isExp()Z

    move-result v3

    if-eqz v3, :cond_10b

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v3}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->isSimpleLocal(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_111

    :cond_10b
    iget-object v3, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    instance-of v3, v3, Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;

    if-eqz v3, :cond_119

    :cond_111
    const-string v3, "EEEE"

    const-string v4, "EEE"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_119
    iput-wide v5, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mPreValue:J

    :goto_11b
    iget-object v3, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mText:Ljava/lang/String;

    iget-wide v3, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mPreValue:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_12f

    iput-wide v0, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mPreValue:J

    :cond_12f
    return-object v2
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->resume()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    return-void
.end method
