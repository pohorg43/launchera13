.class public Lcom/coui/appcompat/calendar/COUICalendarPicker;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/calendar/COUICalendarPicker$ValidationCallback;,
        Lcom/coui/appcompat/calendar/COUICalendarPicker$AbstractDatePickerDelegate;,
        Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;,
        Lcom/coui/appcompat/calendar/COUICalendarPicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

.field private final mMaxWidth:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coui/appcompat/calendar/COUICalendarPicker;

    const-string v0, "COUICalendarPicker"

    sput-object v0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/calendar/COUICalendarPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/calendar/COUICalendarPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/calendar/COUICalendarPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUICalendarPicker:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$styleable;->COUICalendarPicker_android_firstDayOfWeek:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/calendar/COUICalendarPicker;->createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->calendar_picker_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mMaxWidth:I

    if-eqz v1, :cond_2a

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/calendar/COUICalendarPicker;->setFirstDayOfWeek(I)V

    :cond_2a
    return-void
.end method

.method private createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;
    .registers 12

    new-instance v6, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;-><init>(Lcom/coui/appcompat/calendar/COUICalendarPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .registers 4

    invoke-virtual {p0}, Lcom/coui/appcompat/calendar/COUICalendarPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " could not be autofilled into "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->updateDate(J)V

    return-void
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 1

    const-class p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAutofillType()I
    .registers 1

    invoke-virtual {p0}, Lcom/coui/appcompat/calendar/COUICalendarPicker;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x4

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 3

    invoke-virtual {p0}, Lcom/coui/appcompat/calendar/COUICalendarPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->getDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public getDayOfMonth()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->getDayOfMonth()I

    move-result p0

    return p0
.end method

.method public getFirstDayOfWeek()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->getFirstDayOfWeek()I

    move-result p0

    return p0
.end method

.method public getMaxDate()J
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->getMaxDate()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->getMinDate()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->getMonth()I

    move-result p0

    return p0
.end method

.method public getYear()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->getYear()I

    move-result p0

    return p0
.end method

.method public init(IIILcom/coui/appcompat/calendar/COUICalendarPicker$OnDateChangedListener;)V
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->init(IIILcom/coui/appcompat/calendar/COUICalendarPicker$OnDateChangedListener;)V

    return-void
.end method

.method public isEnabled()Z
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isYearPickerShowing()Z
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->isYearPickerIsShow()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Landroid/view/View$BaseSavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0, v0}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public setCurrentYear()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->setCurrentYear()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {v0}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_c

    const/4 v0, 0x7

    if-gt p1, v0, :cond_c

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->setFirstDayOfWeek(I)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxDate(J)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0, p1, p2}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->setMaxDate(J)V

    return-void
.end method

.method public setMinDate(J)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0, p1, p2}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->setMinDate(J)V

    return-void
.end method

.method public setOnDateChangedListener(Lcom/coui/appcompat/calendar/COUICalendarPicker$OnDateChangedListener;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->setOnDateChangedListener(Lcom/coui/appcompat/calendar/COUICalendarPicker$OnDateChangedListener;)V

    return-void
.end method

.method public setValidationCallback(Lcom/coui/appcompat/calendar/COUICalendarPicker$ValidationCallback;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->setValidationCallback(Lcom/coui/appcompat/calendar/COUICalendarPicker$ValidationCallback;)V

    return-void
.end method

.method public updateDate(III)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPicker;->mDelegate:Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/coui/appcompat/calendar/COUICalendarPicker$COUIDatePickerDelegate;->updateDate(III)V

    return-void
.end method
